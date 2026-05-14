package com.google.firebase.messaging;

import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6546a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f6547b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f6548c;

    public /* synthetic */ h(Object obj, TaskCompletionSource taskCompletionSource, int i) {
        this.f6546a = i;
        this.f6547b = obj;
        this.f6548c = taskCompletionSource;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6546a) {
            case 0:
                FirebaseMessaging.a((FirebaseMessaging) this.f6547b, this.f6548c);
                return;
            case 1:
                FirebaseMessaging.c((FirebaseMessaging) this.f6547b, this.f6548c);
                return;
            case 2:
                FirebaseMessaging.d((FirebaseMessaging) this.f6547b, this.f6548c);
                return;
            default:
                ImageDownload.b((ImageDownload) this.f6547b, this.f6548c);
                return;
        }
    }
}
