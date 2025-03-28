view: orders {
  sql_table_name: `da-coe-iot-streaming.vodafone.orders` ;;

  dimension: account_team {
    type: string
    sql: ${TABLE}.Account_Team ;;
  }
  dimension: business_segment {
    type: string
    sql: ${TABLE}.Business_Segment ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }
  dimension: current_order_status {
    type: string
    sql: ${TABLE}.Current_Order_Status ;;
  }
  dimension_group: order_completion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Order_completion_date ;;
  }
  dimension_group: order_submission {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Order_submission_date ;;
  }
  measure: count {
    type: count
  }
}
