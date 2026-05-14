package A1;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f30a;

    /* renamed from: b  reason: collision with root package name */
    public static final e f31b;

    /* renamed from: c  reason: collision with root package name */
    public static final e f32c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ e[] f33d;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, A1.e] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, A1.e] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, A1.e] */
    static {
        ?? r02 = new Enum("LINEAR_VERTICAL", 0);
        f30a = r02;
        ?? r12 = new Enum("LINEAR_HORIZONTAL", 1);
        f31b = r12;
        ?? r22 = new Enum("GRID", 2);
        f32c = r22;
        f33d = new e[]{r02, r12, r22};
    }

    public static e valueOf(String str) {
        return (e) Enum.valueOf(e.class, str);
    }

    public static e[] values() {
        return (e[]) f33d.clone();
    }
}
