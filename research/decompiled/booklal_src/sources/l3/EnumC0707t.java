package l3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: l3.t  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC0707t {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0707t f9326a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC0707t f9327b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC0707t f9328c;

    /* renamed from: d  reason: collision with root package name */
    public static final EnumC0707t f9329d;

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ EnumC0707t[] f9330e;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, l3.t] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, l3.t] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, l3.t] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, l3.t] */
    static {
        ?? r02 = new Enum("PROCESSED", 0);
        f9326a = r02;
        ?? r12 = new Enum("REFUSED", 1);
        f9327b = r12;
        ?? r22 = new Enum("DROPPED", 2);
        f9328c = r22;
        ?? r32 = new Enum("MISCARRIED", 3);
        f9329d = r32;
        f9330e = new EnumC0707t[]{r02, r12, r22, r32};
    }

    public static EnumC0707t valueOf(String str) {
        return (EnumC0707t) Enum.valueOf(EnumC0707t.class, str);
    }

    public static EnumC0707t[] values() {
        return (EnumC0707t[]) f9330e.clone();
    }
}
