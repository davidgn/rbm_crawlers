package com.google.firebase.concurrent;

import com.google.firebase.concurrent.DelegatingScheduledFuture;
/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6241a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledExecutorService f6242b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Runnable f6243c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ DelegatingScheduledFuture.Completer f6244d;

    public /* synthetic */ d(DelegatingScheduledExecutorService delegatingScheduledExecutorService, Runnable runnable, DelegatingScheduledFuture.Completer completer, int i) {
        this.f6241a = i;
        this.f6242b = delegatingScheduledExecutorService;
        this.f6243c = runnable;
        this.f6244d = completer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6241a) {
            case 0:
                this.f6242b.lambda$scheduleWithFixedDelay$10(this.f6243c, this.f6244d);
                return;
            case 1:
                this.f6242b.lambda$scheduleAtFixedRate$7(this.f6243c, this.f6244d);
                return;
            default:
                this.f6242b.lambda$schedule$1(this.f6243c, this.f6244d);
                return;
        }
    }
}
