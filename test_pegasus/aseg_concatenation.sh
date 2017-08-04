#!/usr/bin/env bash

source //anaconda/bin/activate tvb_recon_python3_env

export FREESURFER_HOME
source ${FREESURFER_HOME}/SetUpFreeSurfer.sh
export SUBJECT

python -c "import tvb.recon.algo.reconutils; tvb.recon.algo.reconutils.aseg_surf_conc_annot('$PWD','$1','$2','$3',lut_path='$4')"