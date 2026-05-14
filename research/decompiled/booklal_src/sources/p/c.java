package p;

import android.os.Bundle;
/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f9800a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f9801b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Bundle f9802c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ f f9803d;

    public /* synthetic */ c(f fVar, String str, Bundle bundle, int i) {
        this.f9800a = i;
        this.f9803d = fVar;
        this.f9801b = str;
        this.f9802c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9800a) {
            case 0:
                this.f9803d.f9817b.extraCallback(this.f9801b, this.f9802c);
                return;
            default:
                this.f9803d.f9817b.onPostMessage(this.f9801b, this.f9802c);
                return;
        }
    }
}
