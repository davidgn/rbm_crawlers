.class public final Lcom/google/android/gms/internal/ads/zzekv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzekv;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Z)LN2/o;
    .locals 1

    :try_start_0
    new-instance v0, Lr0/a;

    invoke-direct {v0, p1}, Lr0/a;-><init>(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzekv;->zza:Landroid/content/Context;

    invoke-static {p1}, Lp0/b;->a(Landroid/content/Context;)Lp0/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lp0/b;->b(Lr0/a;)LN2/o;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzc(Ljava/lang/Throwable;)LN2/o;

    move-result-object p1

    return-object p1
.end method
