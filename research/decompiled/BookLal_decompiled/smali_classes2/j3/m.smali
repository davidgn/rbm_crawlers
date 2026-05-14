.class public final Lj3/m;
.super Lj3/h;
.source "SourceFile"


# instance fields
.field public final a:Lj3/h;

.field public final b:Lr3/g;


# direct methods
.method public constructor <init>(Lj3/h;Lr3/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/m;->a:Lj3/h;

    const-string p1, "interceptor"

    invoke-static {p2, p1}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lj3/m;->b:Lr3/g;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj3/m;->a:Lj3/h;

    invoke-virtual {v0}, Lj3/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lj3/h0;Lj3/g;)Lj3/k;
    .locals 3

    iget-object v0, p0, Lj3/m;->a:Lj3/h;

    iget-object v1, p0, Lj3/m;->b:Lr3/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lr3/f;

    invoke-virtual {v0, p1, p2}, Lj3/h;->g(Lj3/h0;Lj3/g;)Lj3/k;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lr3/f;-><init>(Lr3/g;Lj3/k;)V

    return-object v2
.end method
