package com.google.firebase.firestore.model.mutation;

import com.google.firebase.firestore.model.FieldPath;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public final class FieldMask {
    public static FieldMask EMPTY = fromSet(new HashSet());
    private final Set<FieldPath> mask;

    private FieldMask(Set<FieldPath> set) {
        this.mask = set;
    }

    public static FieldMask fromSet(Set<FieldPath> set) {
        return new FieldMask(set);
    }

    public boolean covers(FieldPath fieldPath) {
        for (FieldPath fieldPath2 : this.mask) {
            if (fieldPath2.isPrefixOf(fieldPath)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || FieldMask.class != obj.getClass()) {
            return false;
        }
        return this.mask.equals(((FieldMask) obj).mask);
    }

    public Set<FieldPath> getMask() {
        return this.mask;
    }

    public int hashCode() {
        return this.mask.hashCode();
    }

    public String toString() {
        return "FieldMask{mask=" + this.mask.toString() + "}";
    }
}
