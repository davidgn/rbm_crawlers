package r3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* renamed from: r3.b  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class EnumC0813b {

    /* renamed from: a  reason: collision with root package name */
    public static final EnumC0813b f9995a;

    /* renamed from: b  reason: collision with root package name */
    public static final EnumC0813b f9996b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ EnumC0813b[] f9997c;

    /* JADX WARN: Type inference failed for: r0v0, types: [r3.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r1v1, types: [r3.b, java.lang.Enum] */
    /* JADX WARN: Type inference failed for: r2v2, types: [r3.b, java.lang.Enum] */
    static {
        ?? r02 = new Enum("BLOCKING", 0);
        f9995a = r02;
        ?? r12 = new Enum("FUTURE", 1);
        ?? r22 = new Enum("ASYNC", 2);
        f9996b = r22;
        f9997c = new EnumC0813b[]{r02, r12, r22};
    }

    public static EnumC0813b valueOf(String str) {
        return (EnumC0813b) Enum.valueOf(EnumC0813b.class, str);
    }

    public static EnumC0813b[] values() {
        return (EnumC0813b[]) f9997c.clone();
    }
}
