package c3;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public static final q f4909a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ q[] f4910b;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.lang.Enum, c3.q] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Enum, c3.q] */
    static {
        ?? r02 = new Enum("MOBILE", 0);
        f4909a = r02;
        f4910b = new q[]{r02, new Enum("FIXED_LINE", 1), new Enum("FIXED_LINE_OR_MOBILE", 2), new Enum("TOLL_FREE", 3), new Enum("PREMIUM_RATE", 4), new Enum("SHARED_COST", 5), new Enum("VOIP", 6), new Enum("PERSONAL_NUMBER", 7), new Enum("PAGER", 8), new Enum("UAN", 9), new Enum("VOICEMAIL", 10), new Enum("UNKNOWN", 11)};
    }

    public static q valueOf(String str) {
        return (q) Enum.valueOf(q.class, str);
    }

    public static q[] values() {
        return (q[]) f4910b.clone();
    }
}
