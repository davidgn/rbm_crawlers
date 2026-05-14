package b1;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final i f4798a;

    /* renamed from: b  reason: collision with root package name */
    public static final i f4799b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ i[] f4800c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, b1.i] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, b1.i] */
    static {
        ?? r02 = new Enum("SRGB", 0);
        f4798a = r02;
        ?? r12 = new Enum("DISPLAY_P3", 1);
        f4799b = r12;
        f4800c = new i[]{r02, r12};
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f4800c.clone();
    }
}
