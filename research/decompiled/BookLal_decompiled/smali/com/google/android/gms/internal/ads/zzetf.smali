.class public final Lcom/google/android/gms/internal/ads/zzetf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfbp;


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetf;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()LN2/o;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetf;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzetg;

    const-string v2, "com.google.android.gms.permission.AD_ID"

    invoke-static {v0, v2}, LC/i;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzetg;-><init>(Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
