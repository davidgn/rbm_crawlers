.class public abstract Ly1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LI/i;

.field public static final b:Lh/G;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LI/i;

    invoke-direct {v0}, LI/i;-><init>()V

    sput-object v0, Ly1/f;->a:LI/i;

    new-instance v0, Lh/G;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh/G;-><init>(I)V

    sput-object v0, Ly1/f;->b:Lh/G;

    return-void
.end method
