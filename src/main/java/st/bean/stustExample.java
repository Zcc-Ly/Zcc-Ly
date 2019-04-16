package st.bean;

import java.util.ArrayList;
import java.util.List;

public class stustExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public stustExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andSuSidIsNull() {
            addCriterion("su_sId is null");
            return (Criteria) this;
        }

        public Criteria andSuSidIsNotNull() {
            addCriterion("su_sId is not null");
            return (Criteria) this;
        }

        public Criteria andSuSidEqualTo(Integer value) {
            addCriterion("su_sId =", value, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuSidNotEqualTo(Integer value) {
            addCriterion("su_sId <>", value, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuSidGreaterThan(Integer value) {
            addCriterion("su_sId >", value, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuSidGreaterThanOrEqualTo(Integer value) {
            addCriterion("su_sId >=", value, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuSidLessThan(Integer value) {
            addCriterion("su_sId <", value, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuSidLessThanOrEqualTo(Integer value) {
            addCriterion("su_sId <=", value, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuSidIn(List<Integer> values) {
            addCriterion("su_sId in", values, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuSidNotIn(List<Integer> values) {
            addCriterion("su_sId not in", values, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuSidBetween(Integer value1, Integer value2) {
            addCriterion("su_sId between", value1, value2, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuSidNotBetween(Integer value1, Integer value2) {
            addCriterion("su_sId not between", value1, value2, "suSid");
            return (Criteria) this;
        }

        public Criteria andSuStidIsNull() {
            addCriterion("su_stId is null");
            return (Criteria) this;
        }

        public Criteria andSuStidIsNotNull() {
            addCriterion("su_stId is not null");
            return (Criteria) this;
        }

        public Criteria andSuStidEqualTo(Integer value) {
            addCriterion("su_stId =", value, "suStid");
            return (Criteria) this;
        }

        public Criteria andSuStidNotEqualTo(Integer value) {
            addCriterion("su_stId <>", value, "suStid");
            return (Criteria) this;
        }

        public Criteria andSuStidGreaterThan(Integer value) {
            addCriterion("su_stId >", value, "suStid");
            return (Criteria) this;
        }

        public Criteria andSuStidGreaterThanOrEqualTo(Integer value) {
            addCriterion("su_stId >=", value, "suStid");
            return (Criteria) this;
        }

        public Criteria andSuStidLessThan(Integer value) {
            addCriterion("su_stId <", value, "suStid");
            return (Criteria) this;
        }

        public Criteria andSuStidLessThanOrEqualTo(Integer value) {
            addCriterion("su_stId <=", value, "suStid");
            return (Criteria) this;
        }

        public Criteria andSuStidIn(List<Integer> values) {
            addCriterion("su_stId in", values, "suStid");
            return (Criteria) this;
        }

        public Criteria andSuStidNotIn(List<Integer> values) {
            addCriterion("su_stId not in", values, "suStid");
            return (Criteria) this;
        }

        public Criteria andSuStidBetween(Integer value1, Integer value2) {
            addCriterion("su_stId between", value1, value2, "suStid");
            return (Criteria) this;
        }

        public Criteria andSuStidNotBetween(Integer value1, Integer value2) {
            addCriterion("su_stId not between", value1, value2, "suStid");
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