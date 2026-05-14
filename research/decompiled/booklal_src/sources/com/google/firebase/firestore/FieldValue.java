package com.google.firebase.firestore;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class FieldValue {
    private static final DeleteFieldValue DELETE_INSTANCE = new DeleteFieldValue();
    private static final ServerTimestampFieldValue SERVER_TIMESTAMP_INSTANCE = new ServerTimestampFieldValue();

    /* loaded from: classes2.dex */
    public static class ArrayRemoveFieldValue extends FieldValue {
        private final List<Object> elements;

        public ArrayRemoveFieldValue(List<Object> list) {
            this.elements = list;
        }

        public List<Object> getElements() {
            return this.elements;
        }

        @Override // com.google.firebase.firestore.FieldValue
        public String getMethodName() {
            return "FieldValue.arrayRemove";
        }
    }

    /* loaded from: classes2.dex */
    public static class ArrayUnionFieldValue extends FieldValue {
        private final List<Object> elements;

        public ArrayUnionFieldValue(List<Object> list) {
            this.elements = list;
        }

        public List<Object> getElements() {
            return this.elements;
        }

        @Override // com.google.firebase.firestore.FieldValue
        public String getMethodName() {
            return "FieldValue.arrayUnion";
        }
    }

    /* loaded from: classes2.dex */
    public static class DeleteFieldValue extends FieldValue {
        @Override // com.google.firebase.firestore.FieldValue
        public String getMethodName() {
            return "FieldValue.delete";
        }
    }

    /* loaded from: classes2.dex */
    public static class NumericIncrementFieldValue extends FieldValue {
        private final Number operand;

        public NumericIncrementFieldValue(Number number) {
            this.operand = number;
        }

        @Override // com.google.firebase.firestore.FieldValue
        public String getMethodName() {
            return "FieldValue.increment";
        }

        public Number getOperand() {
            return this.operand;
        }
    }

    /* loaded from: classes2.dex */
    public static class ServerTimestampFieldValue extends FieldValue {
        @Override // com.google.firebase.firestore.FieldValue
        public String getMethodName() {
            return "FieldValue.serverTimestamp";
        }
    }

    public static FieldValue arrayRemove(Object... objArr) {
        return new ArrayRemoveFieldValue(Arrays.asList(objArr));
    }

    public static FieldValue arrayUnion(Object... objArr) {
        return new ArrayUnionFieldValue(Arrays.asList(objArr));
    }

    public static FieldValue delete() {
        return DELETE_INSTANCE;
    }

    public static FieldValue increment(long j5) {
        return new NumericIncrementFieldValue(Long.valueOf(j5));
    }

    public static FieldValue serverTimestamp() {
        return SERVER_TIMESTAMP_INSTANCE;
    }

    public abstract String getMethodName();

    public static FieldValue increment(double d2) {
        return new NumericIncrementFieldValue(Double.valueOf(d2));
    }
}
