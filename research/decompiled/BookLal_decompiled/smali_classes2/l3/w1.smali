.class public final Ll3/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/u1;


# instance fields
.field public final synthetic a:Ll3/B0;


# direct methods
.method public constructor <init>(Ll3/B0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/w1;->a:Ll3/B0;

    return-void
.end method


# virtual methods
.method public final a(Ll3/z1;)V
    .locals 4

    iget-object v0, p1, Ll3/z1;->a:Ll3/s;

    new-instance v1, Ll3/R1;

    iget-object v2, p0, Ll3/w1;->a:Ll3/B0;

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2, p1}, Ll3/R1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ll3/s;->g(Ll3/u;)V

    return-void
.end method
