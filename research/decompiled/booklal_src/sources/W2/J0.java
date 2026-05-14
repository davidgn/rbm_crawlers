package W2;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class J0 {

    /* renamed from: a  reason: collision with root package name */
    public static final J0 f2906a;

    /* renamed from: b  reason: collision with root package name */
    public static final J0 f2907b;

    /* renamed from: c  reason: collision with root package name */
    public static final J0 f2908c;

    /* renamed from: d  reason: collision with root package name */
    public static final J0 f2909d;

    /* renamed from: e  reason: collision with root package name */
    public static final J0 f2910e;

    /* renamed from: f  reason: collision with root package name */
    public static final /* synthetic */ J0[] f2911f;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, W2.J0] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, W2.J0] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, W2.J0] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, W2.J0] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, W2.J0] */
    static {
        ?? r02 = new Enum("UPDATE", 0);
        f2906a = r02;
        ?? r12 = new Enum("DELETE", 1);
        f2907b = r12;
        ?? r22 = new Enum("VERIFY", 2);
        f2908c = r22;
        ?? r32 = new Enum("TRANSFORM", 3);
        f2909d = r32;
        ?? r42 = new Enum("OPERATION_NOT_SET", 4);
        f2910e = r42;
        f2911f = new J0[]{r02, r12, r22, r32, r42};
    }

    public static J0 valueOf(String str) {
        return (J0) Enum.valueOf(J0.class, str);
    }

    public static J0[] values() {
        return (J0[]) f2911f.clone();
    }
}
