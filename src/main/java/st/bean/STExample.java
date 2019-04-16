package st.bean;

import java.util.ArrayList;
import java.util.List;

public class STExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public STExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andStnoIsNull() {
            addCriterion("stNo is null");
            return (Criteria) this;
        }

        public Criteria andStnoIsNotNull() {
            addCriterion("stNo is not null");
            return (Criteria) this;
        }

        public Criteria andStnoEqualTo(Integer value) {
            addCriterion("stNo =", value, "stno");
            return (Criteria) this;
        }

        public Criteria andStnoNotEqualTo(Integer value) {
            addCriterion("stNo <>", value, "stno");
            return (Criteria) this;
        }

        public Criteria andStnoGreaterThan(Integer value) {
            addCriterion("stNo >", value, "stno");
            return (Criteria) this;
        }

        public Criteria andStnoGreaterThanOrEqualTo(Integer value) {
            addCriterion("stNo >=", value, "stno");
            return (Criteria) this;
        }

        public Criteria andStnoLessThan(Integer value) {
            addCriterion("stNo <", value, "stno");
            return (Criteria) this;
        }

        public Criteria andStnoLessThanOrEqualTo(Integer value) {
            addCriterion("stNo <=", value, "stno");
            return (Criteria) this;
        }

        public Criteria andStnoIn(List<Integer> values) {
            addCriterion("stNo in", values, "stno");
            return (Criteria) this;
        }

        public Criteria andStnoNotIn(List<Integer> values) {
            addCriterion("stNo not in", values, "stno");
            return (Criteria) this;
        }

        public Criteria andStnoBetween(Integer value1, Integer value2) {
            addCriterion("stNo between", value1, value2, "stno");
            return (Criteria) this;
        }

        public Criteria andStnoNotBetween(Integer value1, Integer value2) {
            addCriterion("stNo not between", value1, value2, "stno");
            return (Criteria) this;
        }

        public Criteria andStnameIsNull() {
            addCriterion("stName is null");
            return (Criteria) this;
        }

        public Criteria andStnameIsNotNull() {
            addCriterion("stName is not null");
            return (Criteria) this;
        }

        public Criteria andStnameEqualTo(String value) {
            addCriterion("stName =", value, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameNotEqualTo(String value) {
            addCriterion("stName <>", value, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameGreaterThan(String value) {
            addCriterion("stName >", value, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameGreaterThanOrEqualTo(String value) {
            addCriterion("stName >=", value, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameLessThan(String value) {
            addCriterion("stName <", value, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameLessThanOrEqualTo(String value) {
            addCriterion("stName <=", value, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameLike(String value) {
            addCriterion("stName like", value, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameNotLike(String value) {
            addCriterion("stName not like", value, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameIn(List<String> values) {
            addCriterion("stName in", values, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameNotIn(List<String> values) {
            addCriterion("stName not in", values, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameBetween(String value1, String value2) {
            addCriterion("stName between", value1, value2, "stname");
            return (Criteria) this;
        }

        public Criteria andStnameNotBetween(String value1, String value2) {
            addCriterion("stName not between", value1, value2, "stname");
            return (Criteria) this;
        }

        public Criteria andStfuzerenIsNull() {
            addCriterion("stfuzeren is null");
            return (Criteria) this;
        }

        public Criteria andStfuzerenIsNotNull() {
            addCriterion("stfuzeren is not null");
            return (Criteria) this;
        }

        public Criteria andStfuzerenEqualTo(String value) {
            addCriterion("stfuzeren =", value, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenNotEqualTo(String value) {
            addCriterion("stfuzeren <>", value, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenGreaterThan(String value) {
            addCriterion("stfuzeren >", value, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenGreaterThanOrEqualTo(String value) {
            addCriterion("stfuzeren >=", value, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenLessThan(String value) {
            addCriterion("stfuzeren <", value, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenLessThanOrEqualTo(String value) {
            addCriterion("stfuzeren <=", value, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenLike(String value) {
            addCriterion("stfuzeren like", value, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenNotLike(String value) {
            addCriterion("stfuzeren not like", value, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenIn(List<String> values) {
            addCriterion("stfuzeren in", values, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenNotIn(List<String> values) {
            addCriterion("stfuzeren not in", values, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenBetween(String value1, String value2) {
            addCriterion("stfuzeren between", value1, value2, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andStfuzerenNotBetween(String value1, String value2) {
            addCriterion("stfuzeren not between", value1, value2, "stfuzeren");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneIsNull() {
            addCriterion("fuzeren_phone is null");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneIsNotNull() {
            addCriterion("fuzeren_phone is not null");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneEqualTo(String value) {
            addCriterion("fuzeren_phone =", value, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneNotEqualTo(String value) {
            addCriterion("fuzeren_phone <>", value, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneGreaterThan(String value) {
            addCriterion("fuzeren_phone >", value, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("fuzeren_phone >=", value, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneLessThan(String value) {
            addCriterion("fuzeren_phone <", value, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneLessThanOrEqualTo(String value) {
            addCriterion("fuzeren_phone <=", value, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneLike(String value) {
            addCriterion("fuzeren_phone like", value, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneNotLike(String value) {
            addCriterion("fuzeren_phone not like", value, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneIn(List<String> values) {
            addCriterion("fuzeren_phone in", values, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneNotIn(List<String> values) {
            addCriterion("fuzeren_phone not in", values, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneBetween(String value1, String value2) {
            addCriterion("fuzeren_phone between", value1, value2, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andFuzerenPhoneNotBetween(String value1, String value2) {
            addCriterion("fuzeren_phone not between", value1, value2, "fuzerenPhone");
            return (Criteria) this;
        }

        public Criteria andZgdanweiIsNull() {
            addCriterion("zgdanwei is null");
            return (Criteria) this;
        }

        public Criteria andZgdanweiIsNotNull() {
            addCriterion("zgdanwei is not null");
            return (Criteria) this;
        }

        public Criteria andZgdanweiEqualTo(String value) {
            addCriterion("zgdanwei =", value, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiNotEqualTo(String value) {
            addCriterion("zgdanwei <>", value, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiGreaterThan(String value) {
            addCriterion("zgdanwei >", value, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiGreaterThanOrEqualTo(String value) {
            addCriterion("zgdanwei >=", value, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiLessThan(String value) {
            addCriterion("zgdanwei <", value, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiLessThanOrEqualTo(String value) {
            addCriterion("zgdanwei <=", value, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiLike(String value) {
            addCriterion("zgdanwei like", value, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiNotLike(String value) {
            addCriterion("zgdanwei not like", value, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiIn(List<String> values) {
            addCriterion("zgdanwei in", values, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiNotIn(List<String> values) {
            addCriterion("zgdanwei not in", values, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiBetween(String value1, String value2) {
            addCriterion("zgdanwei between", value1, value2, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andZgdanweiNotBetween(String value1, String value2) {
            addCriterion("zgdanwei not between", value1, value2, "zgdanwei");
            return (Criteria) this;
        }

        public Criteria andChenglidayIsNull() {
            addCriterion("chengliday is null");
            return (Criteria) this;
        }

        public Criteria andChenglidayIsNotNull() {
            addCriterion("chengliday is not null");
            return (Criteria) this;
        }

        public Criteria andChenglidayEqualTo(String value) {
            addCriterion("chengliday =", value, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayNotEqualTo(String value) {
            addCriterion("chengliday <>", value, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayGreaterThan(String value) {
            addCriterion("chengliday >", value, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayGreaterThanOrEqualTo(String value) {
            addCriterion("chengliday >=", value, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayLessThan(String value) {
            addCriterion("chengliday <", value, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayLessThanOrEqualTo(String value) {
            addCriterion("chengliday <=", value, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayLike(String value) {
            addCriterion("chengliday like", value, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayNotLike(String value) {
            addCriterion("chengliday not like", value, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayIn(List<String> values) {
            addCriterion("chengliday in", values, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayNotIn(List<String> values) {
            addCriterion("chengliday not in", values, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayBetween(String value1, String value2) {
            addCriterion("chengliday between", value1, value2, "chengliday");
            return (Criteria) this;
        }

        public Criteria andChenglidayNotBetween(String value1, String value2) {
            addCriterion("chengliday not between", value1, value2, "chengliday");
            return (Criteria) this;
        }

        public Criteria andStjianjieIsNull() {
            addCriterion("stjianjie is null");
            return (Criteria) this;
        }

        public Criteria andStjianjieIsNotNull() {
            addCriterion("stjianjie is not null");
            return (Criteria) this;
        }

        public Criteria andStjianjieEqualTo(String value) {
            addCriterion("stjianjie =", value, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieNotEqualTo(String value) {
            addCriterion("stjianjie <>", value, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieGreaterThan(String value) {
            addCriterion("stjianjie >", value, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieGreaterThanOrEqualTo(String value) {
            addCriterion("stjianjie >=", value, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieLessThan(String value) {
            addCriterion("stjianjie <", value, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieLessThanOrEqualTo(String value) {
            addCriterion("stjianjie <=", value, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieLike(String value) {
            addCriterion("stjianjie like", value, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieNotLike(String value) {
            addCriterion("stjianjie not like", value, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieIn(List<String> values) {
            addCriterion("stjianjie in", values, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieNotIn(List<String> values) {
            addCriterion("stjianjie not in", values, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieBetween(String value1, String value2) {
            addCriterion("stjianjie between", value1, value2, "stjianjie");
            return (Criteria) this;
        }

        public Criteria andStjianjieNotBetween(String value1, String value2) {
            addCriterion("stjianjie not between", value1, value2, "stjianjie");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}