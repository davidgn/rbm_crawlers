package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.BackgroundQueue;
import com.google.firebase.firestore.util.Consumer;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final /* synthetic */ class q implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6402a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SQLiteDocumentOverlayCache f6403b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ BackgroundQueue f6404c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ HashMap f6405d;

    public /* synthetic */ q(SQLiteDocumentOverlayCache sQLiteDocumentOverlayCache, BackgroundQueue backgroundQueue, HashMap hashMap, int i) {
        this.f6402a = i;
        this.f6403b = sQLiteDocumentOverlayCache;
        this.f6404c = backgroundQueue;
        this.f6405d = hashMap;
    }

    @Override // com.google.firebase.firestore.util.Consumer
    public final void accept(Object obj) {
        switch (this.f6402a) {
            case 0:
                BackgroundQueue backgroundQueue = this.f6404c;
                SQLiteDocumentOverlayCache.b(this.f6403b, backgroundQueue, this.f6405d, (Cursor) obj);
                return;
            default:
                BackgroundQueue backgroundQueue2 = this.f6404c;
                SQLiteDocumentOverlayCache.f(this.f6403b, backgroundQueue2, this.f6405d, (Cursor) obj);
                return;
        }
    }
}
