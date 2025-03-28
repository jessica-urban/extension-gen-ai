# The name of this view in Looker is "Explore Prompts"
view: explore_prompts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `llm.explore_prompts` ;;
  drill_fields: [model_explore]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: model_explore {
    primary_key: yes
    type: string
    sql: ${TABLE}.model_explore ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: prompt {
    type: string
    sql: ${TABLE}.prompt ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  measure: count {
    type: count
    drill_fields: [model_explore]
  }
}
