package j3;
/* renamed from: j3.k  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0514k {
    public abstract void cancel(String str, Throwable th);

    public C0505b getAttributes() {
        return C0505b.f8023b;
    }

    public abstract void halfClose();

    public boolean isReady() {
        return !(this instanceof AbstractC0515l);
    }

    public abstract void request(int i);

    public abstract void sendMessage(Object obj);

    public void setMessageCompression(boolean z4) {
    }

    public abstract void start(AbstractC0513j abstractC0513j, f0 f0Var);
}
