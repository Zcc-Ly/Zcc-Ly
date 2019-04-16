package st.bean;

import java.util.ArrayList;
import java.util.List;

public class HDExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public HDExample() {
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

        public Criteria andHdnameIsNull() {
            addCriterion("hdName is null");
            return (Criteria) this;
        }

        public Criteria andHdnameIsNotNull() {
            addCriterion("hdName is not null");
            return (Criteria) this;
        }

        public Criteria andHdnameEqualTo(String value) {
            addCriterion("hdName =", value, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameNotEqualTo(String value) {
            addCriterion("hdName <>", value, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameGreaterThan(String value) {
            addCriterion("hdName >", value, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameGreaterThanOrEqualTo(String value) {
            addCriterion("hdName >=", value, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameLessThan(String value) {
            addCriterion("hdName <", value, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameLessThanOrEqualTo(String value) {
            addCriterion("hdName <=", value, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameLike(String value) {
            addCriterion("hdName like", value, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameNotLike(String value) {
            addCriterion("hdName not like", value, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameIn(List<String> values) {
            addCriterion("hdName in", values, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameNotIn(List<String> values) {
            addCriterion("hdName not in", values, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameBetween(String value1, String value2) {
            addCriterion("hdName between", value1, value2, "hdname");
            return (Criteria) this;
        }

        public Criteria andHdnameNotBetween(String value1, String value2) {
            addCriterion("hdName not between", value1, value2, "hdname");
            return (Criteria) this;
        }

        public Criteria andHddayIsNull() {
            addCriterion("hdday is null");
            return (Criteria) this;
        }

        public Criteria andHddayIsNotNull() {
            addCriterion("hdday is not null");
            return (Criteria) this;
        }

        public Criteria andHddayEqualTo(String value) {
            addCriterion("hdday =", value, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayNotEqualTo(String value) {
            addCriterion("hdday <>", value, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayGreaterThan(String value) {
            addCriterion("hdday >", value, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayGreaterThanOrEqualTo(String value) {
            addCriterion("hdday >=", value, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayLessThan(String value) {
            addCriterion("hdday <", value, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayLessThanOrEqualTo(String value) {
            addCriterion("hdday <=", value, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayLike(String value) {
            addCriterion("hdday like", value, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayNotLike(String value) {
            addCriterion("hdday not like", value, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayIn(List<String> values) {
            addCriterion("hdday in", values, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayNotIn(List<String> values) {
            addCriterion("hdday not in", values, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayBetween(String value1, String value2) {
            addCriterion("hdday between", value1, value2, "hdday");
            return (Criteria) this;
        }

        public Criteria andHddayNotBetween(String value1, String value2) {
            addCriterion("hdday not between", value1, value2, "hdday");
            return (Criteria) this;
        }

        public Criteria andHdplaceIsNull() {
            addCriterion("hdplace is null");
            return (Criteria) this;
        }

        public Criteria andHdplaceIsNotNull() {
            addCriterion("hdplace is not null");
            return (Criteria) this;
        }

        public Criteria andHdplaceEqualTo(String value) {
            addCriterion("hdplace =", value, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceNotEqualTo(String value) {
            addCriterion("hdplace <>", value, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceGreaterThan(String value) {
            addCriterion("hdplace >", value, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceGreaterThanOrEqualTo(String value) {
            addCriterion("hdplace >=", value, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceLessThan(String value) {
            addCriterion("hdplace <", value, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceLessThanOrEqualTo(String value) {
            addCriterion("hdplace <=", value, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceLike(String value) {
            addCriterion("hdplace like", value, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceNotLike(String value) {
            addCriterion("hdplace not like", value, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceIn(List<String> values) {
            addCriterion("hdplace in", values, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceNotIn(List<String> values) {
            addCriterion("hdplace not in", values, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceBetween(String value1, String value2) {
            addCriterion("hdplace between", value1, value2, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHdplaceNotBetween(String value1, String value2) {
            addCriterion("hdplace not between", value1, value2, "hdplace");
            return (Criteria) this;
        }

        public Criteria andHddanweiIsNull() {
            addCriterion("hddanwei is null");
            return (Criteria) this;
        }

        public Criteria andHddanweiIsNotNull() {
            addCriterion("hddanwei is not null");
            return (Criteria) this;
        }

        public Criteria andHddanweiEqualTo(Integer value) {
            addCriterion("hddanwei =", value, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHddanweiNotEqualTo(Integer value) {
            addCriterion("hddanwei <>", value, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHddanweiGreaterThan(Integer value) {
            addCriterion("hddanwei >", value, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHddanweiGreaterThanOrEqualTo(Integer value) {
            addCriterion("hddanwei >=", value, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHddanweiLessThan(Integer value) {
            addCriterion("hddanwei <", value, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHddanweiLessThanOrEqualTo(Integer value) {
            addCriterion("hddanwei <=", value, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHddanweiIn(List<Integer> values) {
            addCriterion("hddanwei in", values, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHddanweiNotIn(List<Integer> values) {
            addCriterion("hddanwei not in", values, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHddanweiBetween(Integer value1, Integer value2) {
            addCriterion("hddanwei between", value1, value2, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHddanweiNotBetween(Integer value1, Integer value2) {
            addCriterion("hddanwei not between", value1, value2, "hddanwei");
            return (Criteria) this;
        }

        public Criteria andHdneirongIsNull() {
            addCriterion("hdneirong is null");
            return (Criteria) this;
        }

        public Criteria andHdneirongIsNotNull() {
            addCriterion("hdneirong is not null");
            return (Criteria) this;
        }

        public Criteria andHdneirongEqualTo(String value) {
            addCriterion("hdneirong =", value, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongNotEqualTo(String value) {
            addCriterion("hdneirong <>", value, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongGreaterThan(String value) {
            addCriterion("hdneirong >", value, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongGreaterThanOrEqualTo(String value) {
            addCriterion("hdneirong >=", value, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongLessThan(String value) {
            addCriterion("hdneirong <", value, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongLessThanOrEqualTo(String value) {
            addCriterion("hdneirong <=", value, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongLike(String value) {
            addCriterion("hdneirong like", value, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongNotLike(String value) {
            addCriterion("hdneirong not like", value, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongIn(List<String> values) {
            addCriterion("hdneirong in", values, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongNotIn(List<String> values) {
            addCriterion("hdneirong not in", values, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongBetween(String value1, String value2) {
            addCriterion("hdneirong between", value1, value2, "hdneirong");
            return (Criteria) this;
        }

        public Criteria andHdneirongNotBetween(String value1, String value2) {
            addCriterion("hdneirong not between", value1, value2, "hdneirong");
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