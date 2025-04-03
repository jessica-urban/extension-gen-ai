view: reserves {
  sql_table_name: `da-coe-iot-streaming.gold_demand.reserves` ;;

  measure: average {
    type: number
    sql: ${TABLE}.average ;;
  }
  dimension: countries {
    type: string
    sql: ${TABLE}.countries ;;
  }
  measure: twenty {
    type: number
    sql: ${TABLE}.twenty ;;
  }
  measure: twenty_one {
    type: number
    sql: ${TABLE}.twenty_one ;;
  }
  measure: twenty_three {
    type: number
    sql: ${TABLE}.twenty_three ;;
  }
  measure: twenty_two {
    type: number
    sql: ${TABLE}.twenty_two ;;
  }

}
