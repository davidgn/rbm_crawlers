package com.google.firebase.firestore.remote;
/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6433a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AbstractStream f6434b;

    public /* synthetic */ a(AbstractStream abstractStream, int i) {
        this.f6433a = i;
        this.f6434b = abstractStream;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6433a) {
            case 0:
                AbstractStream.a(this.f6434b);
                return;
            default:
                AbstractStream.b(this.f6434b);
                return;
        }
    }
}
