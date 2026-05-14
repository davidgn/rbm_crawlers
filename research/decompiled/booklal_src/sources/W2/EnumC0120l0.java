package W2;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: W2.l0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC0120l0 {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0120l0 f2939a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC0120l0 f2940b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC0120l0 f2941c;

    /* renamed from: d  reason: collision with root package name */
    public static final EnumC0120l0 f2942d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ EnumC0120l0[] f2943e;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, W2.l0] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, W2.l0] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, W2.l0] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, W2.l0] */
    static {
        ?? r02 = new Enum("COMPOSITE_FILTER", 0);
        f2939a = r02;
        ?? r12 = new Enum("FIELD_FILTER", 1);
        f2940b = r12;
        ?? r22 = new Enum("UNARY_FILTER", 2);
        f2941c = r22;
        ?? r32 = new Enum("FILTERTYPE_NOT_SET", 3);
        f2942d = r32;
        f2943e = new EnumC0120l0[]{r02, r12, r22, r32};
    }

    public static EnumC0120l0 valueOf(String str) {
        return (EnumC0120l0) Enum.valueOf(EnumC0120l0.class, str);
    }

    public static EnumC0120l0[] values() {
        return (EnumC0120l0[]) f2943e.clone();
    }
}
