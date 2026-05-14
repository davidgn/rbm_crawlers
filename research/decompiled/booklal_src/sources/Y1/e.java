package Y1;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f3377a;

    /* renamed from: b  reason: collision with root package name */
    public static final e f3378b;

    /* renamed from: c  reason: collision with root package name */
    public static final e f3379c;

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ e[] f3380d;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, Y1.e] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, Y1.e] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, Y1.e] */
    static {
        ?? r02 = new Enum("NETWORK_UNMETERED", 0);
        f3377a = r02;
        ?? r12 = new Enum("DEVICE_IDLE", 1);
        f3378b = r12;
        ?? r22 = new Enum("DEVICE_CHARGING", 2);
        f3379c = r22;
        f3380d = new e[]{r02, r12, r22};
    }

    public static e valueOf(String str) {
        return (e) Enum.valueOf(e.class, str);
    }

    public static e[] values() {
        return (e[]) f3380d.clone();
    }
}
