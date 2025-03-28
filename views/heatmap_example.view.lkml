view: heatmap_example {
  sql_table_name: `da-coe-iot-streaming.vodafone.heatmap_example` ;;

  dimension: heatmap_value {
    type: number
    sql: ${TABLE}.heatmap_value ;;
  }
  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }
  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }
  measure: count {
    type: count
  }
}
