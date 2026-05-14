.class public final Ll3/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/u1;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ll3/B0;


# direct methods
.method public constructor <init>(Ll3/B0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/s1;->b:Ll3/B0;

    iput-object p2, p0, Ll3/s1;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ll3/z1;)V
    .locals 3

    iget-object v0, p1, Ll3/z1;->a:Ll3/s;

    iget-object v1, p0, Ll3/s1;->b:Ll3/B0;

    iget-object v1, v1, Ll3/B0;->a:Lj3/h0;

    iget-object v2, p0, Ll3/s1;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lj3/h0;->d(Ljava/lang/Object;)Lq3/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ll3/O1;->f(Lq3/a;)V

    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    invoke-interface {p1}, Ll3/O1;->flush()V

    return-void
.end method
