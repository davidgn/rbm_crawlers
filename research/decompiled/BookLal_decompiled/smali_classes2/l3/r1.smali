.class public final Ll3/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/u1;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ll3/r1;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ll3/z1;)V
    .locals 1

    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    iget-boolean v0, p0, Ll3/r1;->a:Z

    invoke-interface {p1, v0}, Ll3/O1;->b(Z)V

    return-void
.end method
