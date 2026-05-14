package com.google.firebase.firestore;

import java.util.Objects;
import s.AbstractC0824e;
/* loaded from: classes2.dex */
public abstract class AggregateField {
    private final String alias;
    private final FieldPath fieldPath;
    private final String operator;

    /* loaded from: classes2.dex */
    public static class AverageAggregateField extends AggregateField {
        private AverageAggregateField(FieldPath fieldPath) {
            super(fieldPath, "average");
        }
    }

    /* loaded from: classes2.dex */
    public static class CountAggregateField extends AggregateField {
        private CountAggregateField() {
            super(null, "count");
        }
    }

    /* loaded from: classes2.dex */
    public static class SumAggregateField extends AggregateField {
        private SumAggregateField(FieldPath fieldPath) {
            super(fieldPath, "sum");
        }
    }

    public static AverageAggregateField average(String str) {
        return new AverageAggregateField(FieldPath.fromDotSeparatedPath(str));
    }

    public static CountAggregateField count() {
        return new CountAggregateField();
    }

    public static SumAggregateField sum(String str) {
        return new SumAggregateField(FieldPath.fromDotSeparatedPath(str));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AggregateField) {
            AggregateField aggregateField = (AggregateField) obj;
            FieldPath fieldPath = this.fieldPath;
            return (fieldPath == null || aggregateField.fieldPath == null) ? fieldPath == null && aggregateField.fieldPath == null : this.operator.equals(aggregateField.getOperator()) && getFieldPath().equals(aggregateField.getFieldPath());
        }
        return false;
    }

    public String getAlias() {
        return this.alias;
    }

    public String getFieldPath() {
        FieldPath fieldPath = this.fieldPath;
        return fieldPath == null ? "" : fieldPath.toString();
    }

    public String getOperator() {
        return this.operator;
    }

    public int hashCode() {
        return Objects.hash(getOperator(), getFieldPath());
    }

    private AggregateField(FieldPath fieldPath, String str) {
        String str2;
        this.fieldPath = fieldPath;
        this.operator = str;
        StringBuilder b5 = AbstractC0824e.b(str);
        if (fieldPath == null) {
            str2 = "";
        } else {
            str2 = "_" + fieldPath;
        }
        b5.append(str2);
        this.alias = b5.toString();
    }

    public static AverageAggregateField average(FieldPath fieldPath) {
        return new AverageAggregateField(fieldPath);
    }

    public static SumAggregateField sum(FieldPath fieldPath) {
        return new SumAggregateField(fieldPath);
    }
}
