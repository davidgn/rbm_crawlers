.class public abstract LQ4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LQ4/j;->d:LQ4/j;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    iget-object v0, v0, LQ4/j;->a:[B

    sput-object v0, LQ4/a;->a:[B

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    return-void
.end method
