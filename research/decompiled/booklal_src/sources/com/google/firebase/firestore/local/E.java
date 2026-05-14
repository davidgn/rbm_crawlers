package com.google.firebase.firestore.local;
/* loaded from: classes2.dex */
public final /* synthetic */ class E implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6351a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ SQLiteSchema f6352b;

    public /* synthetic */ E(SQLiteSchema sQLiteSchema, int i) {
        this.f6351a = i;
        this.f6352b = sQLiteSchema;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6351a) {
            case 0:
                SQLiteSchema.a(this.f6352b);
                return;
            case 1:
                SQLiteSchema.f(this.f6352b);
                return;
            case 2:
                SQLiteSchema.k(this.f6352b);
                return;
            case 3:
                SQLiteSchema.n(this.f6352b);
                return;
            case 4:
                SQLiteSchema.q(this.f6352b);
                return;
            case 5:
                SQLiteSchema.j(this.f6352b);
                return;
            case 6:
                SQLiteSchema.b(this.f6352b);
                return;
            default:
                SQLiteSchema.o(this.f6352b);
                return;
        }
    }
}
