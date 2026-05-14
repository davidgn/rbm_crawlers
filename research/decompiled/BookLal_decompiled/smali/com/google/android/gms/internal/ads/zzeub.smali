.class public final Lcom/google/android/gms/internal/ads/zzeub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfbn;


# instance fields
.field public final zza:Lcom/google/android/gms/ads/internal/client/zzr;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Z

.field public final zzd:Ljava/lang/String;

.field public final zze:F

.field public final zzf:I

.field public final zzg:I

.field public final zzh:Ljava/lang/String;

.field public final zzi:I

.field public final zzj:Z

.field public final zzk:LE/c;

.field public final zzl:Lcom/google/android/gms/internal/ads/zzety;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;IZLE/c;Lcom/google/android/gms/internal/ads/zzety;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "the adSize must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeub;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzb:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzd:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzeub;->zze:F

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzf:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzg:I

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzh:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzi:I

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzj:Z

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzk:LE/c;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzl:Lcom/google/android/gms/internal/ads/zzety;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeub;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    check-cast p1, Landroid/os/Bundle;

    iget v1, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    const-string v6, "smart_w"

    const-string v7, "full"

    invoke-static {p1, v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    const-string v7, "smart_h"

    const-string v8, "auto"

    invoke-static {p1, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzj:Z

    const-string v7, "ene"

    invoke-static {p1, v7, v3, v6}, Lcom/google/android/gms/internal/ads/zzfks;->zzd(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    const-string v6, "102"

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzm:Z

    const-string v8, "rafmt"

    invoke-static {p1, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "108"

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzp:Z

    invoke-static {p1, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "103"

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzn:Z

    invoke-static {p1, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "105"

    iget-boolean v7, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    invoke-static {p1, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzj:Z

    const-string v7, "inline_adaptive_slot"

    invoke-static {p1, v7, v3, v6}, Lcom/google/android/gms/internal/ads/zzfks;->zzd(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    iget-boolean v6, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzo:Z

    const-string v7, "interscroller_slot"

    invoke-static {p1, v7, v3, v6}, Lcom/google/android/gms/internal/ads/zzfks;->zzd(Landroid/os/Bundle;Ljava/lang/String;ZZ)V

    const-string v6, "format"

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzb:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/ads/zzfks;->zze(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "fluid"

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzc:Z

    const-string v8, "height"

    invoke-static {p1, v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzd:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v3

    const-string v9, "sz"

    invoke-static {p1, v9, v6, v7}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "u_sd"

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzeub;->zze:F

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v6, "sw"

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzf:I

    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "sh"

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzg:I

    invoke-virtual {p1, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzh:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v3, v7

    const-string v7, "sc"

    invoke-static {p1, v7, v6, v3}, Lcom/google/android/gms/internal/ads/zzfks;->zzb(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzi:I

    if-eq v3, v4, :cond_2

    const-string v4, "u_mso"

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzk:LE/c;

    if-eqz v3, :cond_3

    const-string v4, "sam_t"

    iget v6, v3, LE/c;->b:I

    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "sam_b"

    iget v6, v3, LE/c;->d:I

    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "sam_l"

    iget v6, v3, LE/c;->a:I

    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "sam_r"

    iget v3, v3, LE/c;->c:I

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeub;->zzl:Lcom/google/android/gms/internal/ads/zzety;

    if-eqz v3, :cond_4

    const-string v4, "rc_tl"

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzety;->zza:I

    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "rc_tr"

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzety;->zzb:I

    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "rc_bl"

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzety;->zzc:I

    invoke-virtual {p1, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "rc_br"

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzety;->zzd:I

    invoke-virtual {p1, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    const-string v6, "is_fluid_height"

    const-string v7, "width"

    if-nez v4, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v8, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v7, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    invoke-virtual {v2, v6, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_2
    array-length v0, v4

    if-ge v2, v0, :cond_6

    aget-object v0, v4, v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-boolean v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v5, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    invoke-virtual {v1, v8, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    invoke-virtual {v1, v7, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    const-string v0, "valid_ad_sizes"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
