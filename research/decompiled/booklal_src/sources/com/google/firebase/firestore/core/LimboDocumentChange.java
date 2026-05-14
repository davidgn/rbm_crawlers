package com.google.firebase.firestore.core;

import com.google.firebase.firestore.model.DocumentKey;
/* loaded from: classes2.dex */
public class LimboDocumentChange {
    private final DocumentKey key;
    private final Type type;

    /* loaded from: classes2.dex */
    public enum Type {
        ADDED,
        REMOVED
    }

    public LimboDocumentChange(Type type, DocumentKey documentKey) {
        this.type = type;
        this.key = documentKey;
    }

    public boolean equals(Object obj) {
        if (obj instanceof LimboDocumentChange) {
            LimboDocumentChange limboDocumentChange = (LimboDocumentChange) obj;
            return this.type.equals(limboDocumentChange.getType()) && this.key.equals(limboDocumentChange.getKey());
        }
        return false;
    }

    public DocumentKey getKey() {
        return this.key;
    }

    public Type getType() {
        return this.type;
    }

    public int hashCode() {
        return this.key.hashCode() + ((this.type.hashCode() + 2077) * 31);
    }
}
