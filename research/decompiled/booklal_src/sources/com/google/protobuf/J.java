package com.google.protobuf;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class J {

    /* renamed from: a  reason: collision with root package name */
    public static final J f6633a;

    /* renamed from: b  reason: collision with root package name */
    public static final J f6634b;

    /* renamed from: c  reason: collision with root package name */
    public static final J f6635c;

    /* renamed from: d  reason: collision with root package name */
    public static final J f6636d;

    /* renamed from: e  reason: collision with root package name */
    public static final J f6637e;

    /* renamed from: f  reason: collision with root package name */
    public static final J f6638f;

    /* renamed from: l  reason: collision with root package name */
    public static final J f6639l;

    /* renamed from: m  reason: collision with root package name */
    public static final /* synthetic */ J[] f6640m;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.protobuf.J] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.protobuf.J] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, com.google.protobuf.J] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, com.google.protobuf.J] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, com.google.protobuf.J] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, com.google.protobuf.J] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, com.google.protobuf.J] */
    static {
        ?? r02 = new Enum("GET_MEMOIZED_IS_INITIALIZED", 0);
        f6633a = r02;
        ?? r12 = new Enum("SET_MEMOIZED_IS_INITIALIZED", 1);
        f6634b = r12;
        ?? r22 = new Enum("BUILD_MESSAGE_INFO", 2);
        f6635c = r22;
        ?? r32 = new Enum("NEW_MUTABLE_INSTANCE", 3);
        f6636d = r32;
        ?? r42 = new Enum("NEW_BUILDER", 4);
        f6637e = r42;
        ?? r5 = new Enum("GET_DEFAULT_INSTANCE", 5);
        f6638f = r5;
        ?? r6 = new Enum("GET_PARSER", 6);
        f6639l = r6;
        f6640m = new J[]{r02, r12, r22, r32, r42, r5, r6};
    }

    public static J valueOf(String str) {
        return (J) Enum.valueOf(J.class, str);
    }

    public static J[] values() {
        return (J[]) f6640m.clone();
    }
}
