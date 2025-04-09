view: events {
  sql_table_name: `da-coe-iot-streaming.walmart.events` ;;

  dimension: campaign_id {
    type: string
    # hidden: yes
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
    type: string
    sql: ${TABLE}.session_id ;;
  }
  dimension: visitor_id {
    type: string
    sql: ${TABLE}.visitor_id ;;
  }

  measure: sum_revenue {
    type: sum
    sql: ${TABLE}.order_revenue ;;
    drill_fields: [campaigns.campaign_name, campaigns.campaign_id]
  }

  measure: sum_cost {
    type: sum
    sql: campaigns.budget;;
    drill_fields: [campaigns.campaign_name, campaigns.campaign_id]
  }

  measure: roi {
    type: percent_of_total
    sql: ${sum_revenue}/${sum_cost} ;;
    drill_fields: [campaigns.campaign_name]
  }
}
