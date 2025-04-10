view: events {
  sql_table_name: `da-coe-iot-streaming.walmart.events` ;;

  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }

  dimension: device {
    type: string
    sql: ${TABLE}.device ;;
  }

  dimension_group: first_touch {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.first_touch ;;
  }

  dimension: ip_address {
    type: string
    sql: ${TABLE}.ip_address ;;
  }

  dimension: landing_page {
    type: string
    sql: ${TABLE}.landing_page ;;
  }

  dimension_group: last_touch {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.last_touch ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_quantity {
    type: number
    sql: ${TABLE}.order_quantity ;;
  }

  dimension: order_revenue {
    type: number
    sql: ${TABLE}.order_revenue ;;
  }

  dimension: session_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitor_id ;;
  }

  measure: count {
    type: count
  }

  measure: total_revenue {
    type: sum
    sql: ${order_revenue} ;;
    value_format_name: usd
    filters: [order_revenue: "> 0"]
  }

  # New measures for dashboards
  measure: avg_order_revenue {
    type: average
    sql: ${order_revenue} ;;
    value_format_name: usd
    filters: [order_revenue: "> 0"]
  }

  measure: sessions {
    type: count_distinct
    sql: ${session_id} ;;
  }

  measure: total_orders {
    type: count_distinct
    sql: ${order_id} ;;
    filters: [order_revenue: "> 0"]
  }

  measure: total_order_quantity {
    type: sum
    sql: ${order_quantity} ;;
    filters: [order_revenue: "> 0"]
  }

  measure: avg_order_quantity {
    type: average
    sql: ${order_quantity} ;;
    filters: [order_revenue: "> 0"]
  }

  measure: conversion_rate {
    type: number
    sql: ${total_orders} / ${sessions};;
    value_format_name: percent_2
  }

  measure: roi {
    type: number
    sql: (${total_revenue} - ${campaigns.total_budget}) / NULLIF(${campaigns.total_budget} ,0) ;;
    value_format_name: percent_2
  }
}
