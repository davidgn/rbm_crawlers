.class public final Ll3/l0;
.super Ll3/W;
.source "SourceFile"


# instance fields
.field public final a:Ll3/z;

.field public final b:LR0/i;


# direct methods
.method public constructor <init>(Ll3/z;LR0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/l0;->a:Ll3/z;

    iput-object p2, p0, Ll3/l0;->b:LR0/i;

    return-void
.end method


# virtual methods
.method public final d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;
    .locals 1

    iget-object v0, p0, Ll3/l0;->a:Ll3/z;

    invoke-interface {v0, p1, p2, p3, p4}, Ll3/v;->d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;

    move-result-object p1

    new-instance p2, Ll3/k0;

    invoke-direct {p2, p0, p1}, Ll3/k0;-><init>(Ll3/l0;Ll3/s;)V

    return-object p2
.end method

.method public final f()Ll3/z;
    .locals 1

    iget-object v0, p0, Ll3/l0;->a:Ll3/z;

    return-object v0
.end method
