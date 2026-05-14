package C3;
/* loaded from: classes2.dex */
public final class d extends RuntimeException {
    public d(Throwable th) {
        super(th != null ? th.getMessage() : null, th == null ? new NullPointerException() : th);
    }
}
