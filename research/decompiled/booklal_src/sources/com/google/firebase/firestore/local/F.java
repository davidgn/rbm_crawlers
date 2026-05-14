package com.google.firebase.firestore.local;

import android.database.Cursor;
import com.google.firebase.firestore.util.Consumer;
/* loaded from: classes2.dex */
public final /* synthetic */ class F implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6353a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SQLiteSchema f6354b;

    public /* synthetic */ F(SQLiteSchema sQLiteSchema, int i) {
        this.f6353a = i;
        this.f6354b = sQLiteSchema;
    }

    @Override // com.google.firebase.firestore.util.Consumer
    public final void accept(Object obj) {
        switch (this.f6353a) {
            case 0:
                this.f6354b.lambda$removeAcknowledgedMutations$2((Cursor) obj);
                return;
            case 1:
                this.f6354b.lambda$dropLastLimboFreeSnapshotVersion$6((Cursor) obj);
                return;
            default:
                this.f6354b.lambda$rewriteCanonicalIds$13((Cursor) obj);
                return;
        }
    }
}
