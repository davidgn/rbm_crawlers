package V0;

import java.util.concurrent.Executor;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class i implements Executor {

    /* renamed from: a  reason: collision with root package name */
    public static final i f2793a;

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ i[] f2794b;

    /* JADX WARN: Type inference failed for: r0v0, types: [V0.i, java.lang.Enum] */
    static {
        ?? r02 = new Enum("INSTANCE", 0);
        f2793a = r02;
        f2794b = new i[]{r02};
    }

    public static i valueOf(String str) {
        return (i) Enum.valueOf(i.class, str);
    }

    public static i[] values() {
        return (i[]) f2794b.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "DirectExecutor";
    }
}
