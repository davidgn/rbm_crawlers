package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
/* loaded from: classes2.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6238a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Runnable f6239b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledFuture.Completer f6240c;

    public /* synthetic */ c(Runnable runnable, DelegatingScheduledFuture.Completer completer, int i) {
        this.f6238a = i;
        this.f6239b = runnable;
        this.f6240c = completer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6238a) {
            case 0:
                DelegatingScheduledExecutorService.lambda$scheduleWithFixedDelay$9(this.f6239b, this.f6240c);
                return;
            case 1:
                DelegatingScheduledExecutorService.lambda$schedule$0(this.f6239b, this.f6240c);
                return;
            default:
                DelegatingScheduledExecutorService.lambda$scheduleAtFixedRate$6(this.f6239b, this.f6240c);
                return;
        }
    }
}
