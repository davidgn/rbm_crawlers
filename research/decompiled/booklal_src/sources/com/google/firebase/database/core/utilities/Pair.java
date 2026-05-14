package com.google.firebase.database.core.utilities;
/* loaded from: classes2.dex */
public final class Pair<T, U> {
    private final T first;
    private final U second;

    public Pair(T t2, U u5) {
        this.first = t2;
        this.second = u5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Pair.class != obj.getClass()) {
            return false;
        }
        Pair pair = (Pair) obj;
        T t2 = this.first;
        if (t2 == null ? pair.first == null : t2.equals(pair.first)) {
            U u5 = this.second;
            U u6 = pair.second;
            return u5 == null ? u6 == null : u5.equals(u6);
        }
        return false;
    }

    public T getFirst() {
        return this.first;
    }

    public U getSecond() {
        return this.second;
    }

    public int hashCode() {
        T t2 = this.first;
        int hashCode = (t2 != null ? t2.hashCode() : 0) * 31;
        U u5 = this.second;
        return hashCode + (u5 != null ? u5.hashCode() : 0);
    }

    public String toString() {
        return "Pair(" + this.first + "," + this.second + ")";
    }
}
