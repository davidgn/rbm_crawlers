.class public final Lcom/google/android/gms/internal/ads/zzbjr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbjf;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzbjf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:debug_logging_feature:enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjr;->zza:Lcom/google/android/gms/internal/ads/zzbjf;

    const-string v0, "gads:debug_logging_feature:intercept_web_view"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbjf;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbjf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbjr;->zzb:Lcom/google/android/gms/internal/ads/zzbjf;

    return-void
.end method
