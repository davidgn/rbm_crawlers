package androidx.lifecycle;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: androidx.lifecycle.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class EnumC0262n {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0262n f4453a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC0262n f4454b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC0262n f4455c;

    /* renamed from: d  reason: collision with root package name */
    public static final EnumC0262n f4456d;

    /* renamed from: e  reason: collision with root package name */
    public static final EnumC0262n f4457e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ EnumC0262n[] f4458f;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.lifecycle.n] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.lifecycle.n] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.lifecycle.n] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.lifecycle.n] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.lifecycle.n] */
    static {
        ?? r02 = new Enum("DESTROYED", 0);
        f4453a = r02;
        ?? r12 = new Enum("INITIALIZED", 1);
        f4454b = r12;
        ?? r22 = new Enum("CREATED", 2);
        f4455c = r22;
        ?? r32 = new Enum("STARTED", 3);
        f4456d = r32;
        ?? r42 = new Enum("RESUMED", 4);
        f4457e = r42;
        f4458f = new EnumC0262n[]{r02, r12, r22, r32, r42};
    }

    public static EnumC0262n valueOf(String str) {
        return (EnumC0262n) Enum.valueOf(EnumC0262n.class, str);
    }

    public static EnumC0262n[] values() {
        return (EnumC0262n[]) f4458f.clone();
    }
}
