package com.google.protobuf;

import java.util.Map;
/* loaded from: classes2.dex */
public final class P0 implements Map.Entry, Comparable {

    /* renamed from: a  reason: collision with root package name */
    public final Comparable f6657a;

    /* renamed from: b  reason: collision with root package name */
    public Object f6658b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ L0 f6659c;

    public P0(L0 l02, Comparable comparable, Object obj) {
        this.f6659c = l02;
        this.f6657a = comparable;
        this.f6658b = obj;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f6657a.compareTo(((P0) obj).f6657a);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Comparable comparable = this.f6657a;
            if (comparable == null ? key == null : comparable.equals(key)) {
                Object obj2 = this.f6658b;
                Object value = entry.getValue();
                if (obj2 == null ? value == null : obj2.equals(value)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f6657a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f6658b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f6657a;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f6658b;
        return (obj != null ? obj.hashCode() : 0) ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f6659c.b();
        Object obj2 = this.f6658b;
        this.f6658b = obj;
        return obj2;
    }

    public final String toString() {
        return this.f6657a + "=" + this.f6658b;
    }
}
