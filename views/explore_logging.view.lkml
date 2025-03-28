# The name of this view in Looker is "Explore Logging"
view: explore_logging {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `llm.explore_logging` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: creation_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.creation_timestamp ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Llm Result" in Explore.

  dimension: llm_result {
    type: string
    sql: ${TABLE}.llmResult ;;
  }

  dimension: model_fields {
    type: string
    sql: ${TABLE}.modelFields ;;
  }

  dimension: thumbs_up_down_none {
    type: number
    sql: ${TABLE}.thumbsUpDownNone ;;
  }

  dimension: user_input {
    type: string
    sql: ${TABLE}.userInput ;;
  }
  measure: count {
    type: count
  }
}
