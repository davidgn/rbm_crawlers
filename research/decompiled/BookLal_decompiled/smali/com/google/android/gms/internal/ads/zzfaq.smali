.class final synthetic Lcom/google/android/gms/internal/ads/zzfaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhac;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfav;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/util/List;

.field private final synthetic zzd:Landroid/os/Bundle;

.field private final synthetic zze:Z

.field private final synthetic zzf:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfav;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zza:Lcom/google/android/gms/internal/ads/zzfav;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzd:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zze:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzf:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza()LN2/o;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zza:Lcom/google/android/gms/internal/ads/zzfav;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzd:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zze:Z

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzfaq;->zzf:Z

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfav;->zzd(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)LN2/o;

    move-result-object v0

    return-object v0
.end method
