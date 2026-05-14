.class public final Lr3/f;
.super Lj3/A;
.source "SourceFile"


# instance fields
.field public final a:Lj3/k;

.field public final synthetic b:Lr3/g;


# direct methods
.method public constructor <init>(Lr3/g;Lj3/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/f;->b:Lr3/g;

    iput-object p2, p0, Lr3/f;->a:Lj3/k;

    return-void
.end method


# virtual methods
.method public final delegate()Lj3/k;
    .locals 1

    iget-object v0, p0, Lr3/f;->a:Lj3/k;

    return-object v0
.end method

.method public final start(Lj3/j;Lj3/f0;)V
    .locals 1

    iget-object v0, p0, Lr3/f;->b:Lr3/g;

    iget-object v0, v0, Lr3/g;->a:Lj3/f0;

    invoke-virtual {p2, v0}, Lj3/f0;->d(Lj3/f0;)V

    invoke-super {p0, p1, p2}, Lj3/A;->start(Lj3/j;Lj3/f0;)V

    return-void
.end method
