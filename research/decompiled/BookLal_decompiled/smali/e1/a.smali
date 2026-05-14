.class public final Le1/a;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# instance fields
.field public final a:Le1/s;

.field public final b:Z

.field public c:Le1/A;


# direct methods
.method public constructor <init>(Le1/s;Le1/t;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-string p3, "Argument must not be null"

    invoke-static {p1, p3}, LW2/B;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le1/a;->a:Le1/s;

    iget-boolean p1, p2, Le1/t;->a:Z

    const/4 p2, 0x0

    iput-object p2, p0, Le1/a;->c:Le1/A;

    iput-boolean p1, p0, Le1/a;->b:Z

    return-void
.end method
