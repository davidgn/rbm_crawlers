package N2;

import java.util.concurrent.Executor;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class n implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public static final n f2120a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ n[] f2121b;

    /* JADX WARN: Type inference failed for: r0v0, types: [N2.n, java.lang.Enum] */
    static {
        ?? r02 = new Enum("INSTANCE", 0);
        f2120a = r02;
        f2121b = new n[]{r02};
    }

    public static n valueOf(String str) {
        return (n) Enum.valueOf(n.class, str);
    }

    public static n[] values() {
        return (n[]) f2121b.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
