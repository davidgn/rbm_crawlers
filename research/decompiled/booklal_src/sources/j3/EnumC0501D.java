package j3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: j3.D  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC0501D {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0501D f7977a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC0501D f7978b;

    /* renamed from: c  reason: collision with root package name */
    public static final EnumC0501D f7979c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ EnumC0501D[] f7980d;
    /* JADX INFO: Fake field, exist only in values array */
    EnumC0501D EF0;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j3.D] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j3.D] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, j3.D] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, j3.D] */
    static {
        ?? r02 = new Enum("CT_UNKNOWN", 0);
        ?? r12 = new Enum("CT_INFO", 1);
        f7977a = r12;
        ?? r22 = new Enum("CT_WARNING", 2);
        f7978b = r22;
        ?? r32 = new Enum("CT_ERROR", 3);
        f7979c = r32;
        f7980d = new EnumC0501D[]{r02, r12, r22, r32};
    }

    public static EnumC0501D valueOf(String str) {
        return (EnumC0501D) Enum.valueOf(EnumC0501D.class, str);
    }

    public static EnumC0501D[] values() {
        return (EnumC0501D[]) f7980d.clone();
    }
}
