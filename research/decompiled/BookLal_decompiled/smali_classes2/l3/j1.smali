.class public abstract Ll3/j1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ll3/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ll3/i1;

    const/4 v1, 0x0

    new-array v2, v1, [B

    invoke-direct {v0, v2, v1, v1}, Ll3/i1;-><init>([BII)V

    sput-object v0, Ll3/j1;->a:Ll3/i1;

    return-void
.end method
