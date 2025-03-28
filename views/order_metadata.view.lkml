view: order_metadata {
  sql_table_name: `da-coe-iot-streaming.vodafone.order_metadata` ;;

  dimension: order_desc {
    type: string
    sql: ${TABLE}.Order_desc ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }
  dimension: order_value {
    type: number
    sql: ${TABLE}.Order_value ;;
  }
  measure: count {
    type: count
  }
}
