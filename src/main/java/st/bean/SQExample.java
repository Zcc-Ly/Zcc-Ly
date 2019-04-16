package st.bean;

import java.util.ArrayList;
import java.util.List;

public class SQExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SQExample() {
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

        public Criteria andSqSidIsNull() {
            addCriterion("SQ_sId is null");
            return (Criteria) this;
        }

        public Criteria andSqSidIsNotNull() {
            addCriterion("SQ_sId is not null");
            return (Criteria) this;
        }

        public Criteria andSqSidEqualTo(Integer value) {
            addCriterion("SQ_sId =", value, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqSidNotEqualTo(Integer value) {
            addCriterion("SQ_sId <>", value, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqSidGreaterThan(Integer value) {
            addCriterion("SQ_sId >", value, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqSidGreaterThanOrEqualTo(Integer value) {
            addCriterion("SQ_sId >=", value, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqSidLessThan(Integer value) {
            addCriterion("SQ_sId <", value, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqSidLessThanOrEqualTo(Integer value) {
            addCriterion("SQ_sId <=", value, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqSidIn(List<Integer> values) {
            addCriterion("SQ_sId in", values, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqSidNotIn(List<Integer> values) {
            addCriterion("SQ_sId not in", values, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqSidBetween(Integer value1, Integer value2) {
            addCriterion("SQ_sId between", value1, value2, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqSidNotBetween(Integer value1, Integer value2) {
            addCriterion("SQ_sId not between", value1, value2, "sqSid");
            return (Criteria) this;
        }

        public Criteria andSqStidIsNull() {
            addCriterion("SQ_stID is null");
            return (Criteria) this;
        }

        public Criteria andSqStidIsNotNull() {
            addCriterion("SQ_stID is not null");
            return (Criteria) this;
        }

        public Criteria andSqStidEqualTo(Integer value) {
            addCriterion("SQ_stID =", value, "sqStid");
            return (Criteria) this;
        }

        public Criteria andSqStidNotEqualTo(Integer value) {
            addCriterion("SQ_stID <>", value, "sqStid");
            return (Criteria) this;
        }

        public Criteria andSqStidGreaterThan(Integer value) {
            addCriterion("SQ_stID >", value, "sqStid");
            return (Criteria) this;
        }

        public Criteria andSqStidGreaterThanOrEqualTo(Integer value) {
            addCriterion("SQ_stID >=", value, "sqStid");
            return (Criteria) this;
        }

        public Criteria andSqStidLessThan(Integer value) {
            addCriterion("SQ_stID <", value, "sqStid");
            return (Criteria) this;
        }

        public Criteria andSqStidLessThanOrEqualTo(Integer value) {
            addCriterion("SQ_stID <=", value, "sqStid");
            return (Criteria) this;
        }

        public Criteria andSqStidIn(List<Integer> values) {
            addCriterion("SQ_stID in", values, "sqStid");
            return (Criteria) this;
        }

        public Criteria andSqStidNotIn(List<Integer> values) {
            addCriterion("SQ_stID not in", values, "sqStid");
            return (Criteria) this;
        }

        public Criteria andSqStidBetween(Integer value1, Integer value2) {
            addCriterion("SQ_stID between", value1, value2, "sqStid");
            return (Criteria) this;
        }

        public Criteria andSqStidNotBetween(Integer value1, Integer value2) {
            addCriterion("SQ_stID not between", value1, value2, "sqStid");
            return (Criteria) this;
        }

        public Criteria andZtIsNull() {
            addCriterion("zt is null");
            return (Criteria) this;
        }

        public Criteria andZtIsNotNull() {
            addCriterion("zt is not null");
            return (Criteria) this;
        }

        public Criteria andZtEqualTo(Integer value) {
            addCriterion("zt =", value, "zt");
            return (Criteria) this;
        }

        public Criteria andZtNotEqualTo(Integer value) {
            addCriterion("zt <>", value, "zt");
            return (Criteria) this;
        }

        public Criteria andZtGreaterThan(Integer value) {
            addCriterion("zt >", value, "zt");
            return (Criteria) this;
        }

        public Criteria andZtGreaterThanOrEqualTo(Integer value) {
            addCriterion("zt >=", value, "zt");
            return (Criteria) this;
        }

        public Criteria andZtLessThan(Integer value) {
            addCriterion("zt <", value, "zt");
            return (Criteria) this;
        }

        public Criteria andZtLessThanOrEqualTo(Integer value) {
            addCriterion("zt <=", value, "zt");
            return (Criteria) this;
        }

        public Criteria andZtIn(List<Integer> values) {
            addCriterion("zt in", values, "zt");
            return (Criteria) this;
        }

        public Criteria andZtNotIn(List<Integer> values) {
            addCriterion("zt not in", values, "zt");
            return (Criteria) this;
        }

        public Criteria andZtBetween(Integer value1, Integer value2) {
            addCriterion("zt between", value1, value2, "zt");
            return (Criteria) this;
        }

        public Criteria andZtNotBetween(Integer value1, Integer value2) {
            addCriterion("zt not between", value1, value2, "zt");
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