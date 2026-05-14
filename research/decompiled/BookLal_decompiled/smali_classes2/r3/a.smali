.class public final Lr3/a;
.super LN2/m;
.source "SourceFile"


# instance fields
.field public final r:Lj3/k;


# direct methods
.method public constructor <init>(Lj3/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/a;->r:Lj3/k;

    return-void
.end method


# virtual methods
.method public final I()V
    .locals 3

    const-string v0, "GrpcFuture was cancelled"

    const/4 v1, 0x0

    iget-object v2, p0, Lr3/a;->r:Lj3/k;

    invoke-virtual {v2, v0, v1}, Lj3/k;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final J()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "clientCall"

    iget-object v2, p0, Lr3/a;->r:Lj3/k;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
