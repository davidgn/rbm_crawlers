.class public abstract Lx4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LG3/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LG3/b;

    const-string v1, "NULL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LG3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx4/f;->a:LG3/b;

    return-void
.end method
