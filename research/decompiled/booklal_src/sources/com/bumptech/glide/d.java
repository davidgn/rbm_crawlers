package com.bumptech.glide;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f5613a;

    /* renamed from: b  reason: collision with root package name */
    public static final d f5614b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ d[] f5615c;
    /* JADX INFO: Fake field, exist only in values array */
    d EF0;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.bumptech.glide.d] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.bumptech.glide.d] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, com.bumptech.glide.d] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, com.bumptech.glide.d] */
    static {
        ?? r02 = new Enum("IMMEDIATE", 0);
        ?? r12 = new Enum("HIGH", 1);
        ?? r22 = new Enum("NORMAL", 2);
        f5613a = r22;
        ?? r32 = new Enum("LOW", 3);
        f5614b = r32;
        f5615c = new d[]{r02, r12, r22, r32};
    }

    public static d valueOf(String str) {
        return (d) Enum.valueOf(d.class, str);
    }

    public static d[] values() {
        return (d[]) f5615c.clone();
    }
}
