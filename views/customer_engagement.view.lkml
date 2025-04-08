view: customer_engagement {
  sql_table_name: `da-coe-iot-streaming.walmart.customer_engagement` ;;

  dimension: campaign_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: click_through_rate {
    type: number
    sql: ${TABLE}.click_through_rate ;;
  }
  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.conversion_rate ;;
  }
  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }
  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }
  dimension: sales_generated {
    type: number
    sql: ${TABLE}.sales_generated ;;
  }
  dimension: total_engagements {
    type: number
    sql: ${TABLE}.total_engagements ;;
  }
  measure: count {
    type: count
    drill_fields: [products.product_id, products.product_name, campaigns.campaign_name, campaigns.campaign_id]
  }
}
